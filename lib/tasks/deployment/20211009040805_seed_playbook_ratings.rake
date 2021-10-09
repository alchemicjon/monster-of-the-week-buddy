namespace :after_party do
  desc 'Deployment task: seed_playbook_ratings'
  task seed_playbook_ratings: :environment do
    puts "Running deploy task 'seed_playbook_ratings'"

    # Put your task implementation HERE.

    # Update task as completed.  If you remove the line below, the task will
    # run with every deploy (or every time you call after_party:run).
    AfterParty::TaskRecord
      .create version: AfterParty::TaskRecorder.new(__FILE__).timestamp
  end
end