class CategoryList
    # Add the uncategorized "magic" category
    def add_uncategorized
      # Support for uncategorized topics
      uncategorized_topics = Topic
                        .listable_topics
                        .where(category_id: nil)
                        .topic_list_order
                        .limit(SiteSetting.category_featured_topics)
      if uncategorized_topics.present?

        totals = Topic.exec_sql("SELECT SUM(CASE WHEN created_at >= (CURRENT_TIMESTAMP - INTERVAL '1 WEEK') THEN 1 ELSE 0 END) as topics_week,
                                        SUM(CASE WHEN created_at >= (CURRENT_TIMESTAMP - INTERVAL '1 MONTH') THEN 1 ELSE 0 END) as topics_month,
                                        SUM(CASE WHEN created_at >= (CURRENT_TIMESTAMP - INTERVAL '1 YEAR') THEN 1 ELSE 0 END) as topics_year,
                                        COUNT(*) AS topic_count
                                 FROM topics
                                 WHERE topics.visible
                                  AND topics.deleted_at IS NULL
                                  AND topics.category_id IS NULL
                                  AND topics.archetype <> '#{Archetype.private_message}'").first


        uncategorized = Category.new({name: SiteSetting.uncategorized_name,
                                      slug: Slug.for(SiteSetting.uncategorized_name),
                                      color: SiteSetting.uncategorized_color,
                                      text_color: SiteSetting.uncategorized_text_color,
                                      featured_topics: uncategorized_topics}.merge(totals))

        # Find the appropriate place to insert it:
        insert_at = nil
        @categories.each_with_index do |c, idx|
          if (uncategorized.topics_week || 0) > (c.topics_week || 0)
            insert_at = idx
            break
          end
        end

        @categories.insert(insert_at || @categories.size, uncategorized)
      end

      if @all_topics.present? && uncategorized.present?
        uncategorized.displayable_topics = uncategorized_topics
        @all_topics << uncategorized_topics
        @all_topics.flatten!
      end
    end
end
