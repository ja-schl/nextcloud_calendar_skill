Feature: delete-appointment

  Scenario Outline: delete appointment
    Given an english speaking user
    When the user says "<delete an appointment>"
    Then "nextcloud-calendar" should reply with exactly "What is the title of the event you want to delete?"
    And the user replies with "cancel"
    Then "nextcloud-calendar" should reply with dialog from "no.event.changed.dialog"

    Examples: Delete an appointment
      | delete an appointment |
      | delete an event |