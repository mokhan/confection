# without delayed_job
Notifier.signup(@user).deliver
# with delayed_job
Notifier.delay.signup(@user)
