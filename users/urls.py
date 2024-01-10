from django.urls import path
from . import views

urlpatterns = [
   path('', views.login, name="login"),
   path('login/', views.login, name="login"),
   path('logintesting/', views.login, name="logintesting"),
   path('register/', views.register, name="register"),
   path('forgotpassword/', views.forgot_password, name="forgotpassword"),
   path('resetpassword/<uidb64>/<token>/', views.reset_password, name="resetpassword"),
   path('sidebar_student/', views.sidebar_student, name="sidebar_student"),
   path('sidebar_admin/', views.sidebar_admin, name="sidebar_admin"),
   path('updateprofile_student/', views.updateprofile_student, name ="updateprofile_student"),
   path('logout/', views.logout, name ="logout"),
   path('student_changepassword/', views.student_changepassword, name ="student_changepassword"),
   path('admin_changepassword/', views.admin_changepassword, name="admin_changepassword"),
   path('testing/<int:pk>/', views.testing, name="testing"),
   path('enquiry/', views.enquiry, name="enquiry"),
   path('admin_dashboard/', views.admin_dashboard, name="admin_dashboard"),
   path('sidebartest/', views.sidebartest, name="sidebartest"),
   path('updateprofile_admin/', views.updateprofile_admin, name="updateprofile_admin"),
   path('admin_active_student_list/',views.admin_student_list, name="student_list_view"),
   path('addnewstudent/', views.addnewstudent, name="addnewstudent"),
   path('viewstudentdetails/<int:pk>/', views.view_student_detail, name="view_student_detail"),
   path('edit_student_details/<int:pk>/', views.edit_student_detail, name="edit_student_detail"),
   #path('edit_student_details/<int:pk>/<str:tab>/', views.edit_student_detail, name="edit_student_detail"),
   #path('edit_student_details/<int:pk>/tab2/',views.edit_student_detail_enrolment, name="edit_student_detail_enrolment"),





   path('delete_student/<int:pk>/', views.delete_student, name="delete_student"),
   path('event_detail/', views.event_detail, name="event_detail"),
   path('admin_list/', views.admin_list_view, name="admin_list_view"),
   path('viewadmindetails/<int:pk>/', views.view_admin_detail, name="view_admin_detail"),
   path('edit_admin_detail/<int:pk>/', views.edit_admin_detail, name="edit_admin_detail"),
   path('addnewadmin/', views.addnewadmin, name="addnewadmin"),
   path('delete_admin/<int:pk>/', views.delete_admin, name="delete_admin"),
   path('admin_announcementList/', views.admin_announcementList, name="admin_announcementList"),
   path('add_announcement/', views.add_announcement, name="add_announcement"),
   path('display_announcement/<int:announcement_id>/', views.display_announcement_superadmin, name='display_announcement'),
   path('admin_sentAnnouncementList/', views.admin_sentAnnouncementList, name='admin_sentAnnouncementList'),
   path('student_announcementList/', views.admin_announcementList, name="student_announcementList"),
   path('calendar/', views.calendar_view, name="calendar"),
   path('student_calendar/', views.student_calendar, name="student_calendar"),
   path('all_events/',views.all_events, name="all_events"),
   path('add_event/', views.add_event, name="add_event"),
   path('update_event/<int:event_id>/', views.update_event, name="update_event"),
   path('delete_event/<int:event_id>/', views.delete_event, name="delete_event"),
   #path('edit_student_detail_enrolment/<int:pk>/', views.edit_student_detail_enrolment, name="edit_student_detail_enrolment"),
   path('add_enrolment/<int:pk>/', views.add_enrolment, name="add_enrolment"),
   path('admin_enrolment_request/', views.admin_enrolment_request, name="admin_enrolment_request"),
   path('accept_enrolment/<int:request_id>/', views.accept_enrolment, name="accept_enrolment"),
   path('reject_enrolment/<int:request_id>/', views.reject_enrolment, name="reject_enrolment"),
   path('student_enrolment_request/', views.student_enrolment_request, name="student_enrolment_request"),
   path('student_delete_enrolment_request/<int:request_id>/', views.student_delete_enrolment_request, name='student_delete_enrolment_request'),
   path('admin_tuition_classes_list/', views.admin_tuition_classes_list, name="admin_tuition_classes_list"),
   path('admin_add_class/', views.admin_add_class, name="admin_add_class"),
   path('admin_delete_tuition_class/<int:pk>/', views.admin_delete_tuition_class, name="admin_delete_tuition_class"),
   path('admin_archive_class/<int:pk>/', views.admin_archive_class, name="admin_archive_class"),
   path('admin_unarchive_class/<int:pk>/', views.admin_unarchive_class, name="admin_unarchive_class"),
   path('admin_edit_class_detail/<int:pk>/', views.admin_edit_class_detail, name="admin_edit_class_detail"),
   path('admin_view_class_detail/<int:pk>/',views.admin_view_class_detail, name="admin_view_class_detail"),
   path('student_add_enrolment/<int:pk>/', views.student_add_enrolment, name="student_add_enrolment"),
   path('student_tuition_classes_list/', views.student_tuition_classes_list, name="student_tuition_classes_list"),
   path('student_drop_class/<int:pk>/', views.student_drop_class, name="student_drop_class"),
   path('student_add_evaluation/<int:pk>/',views.student_add_evaluation, name="student_add_evaluation"),
   path('export_class_history_pdf/<int:pk>/', views.export_class_history_pdf, name="export_class_history_pdf"),
   path('student_timetable', views.student_timetable, name="student_timetable"),
   path('admin_class_dashboard', views.admin_class_dashboard, name="admin_class_dashboard"),
   path('admin_individual_class_dashboard/<int:pk>/', views.admin_individual_class_dashboard, name="admin_individual_class_dashboard"),
   path('admin_student_dashboard/', views.admin_student_dashboard, name="admin_student_dashboard"),
   path('admin_archive_student/<int:pk>/', views.admin_archive_student, name="admin_archive_student"),
   path('admin_student_list/', views.admin_student_list, name="admin_student_list"),
   path('admin_unarchive_student/<int:pk>/', views.admin_unarchive_student, name="admin_unarchive_student"),
   path('admin_individual_student_dashboard/<int:pk>/', views.admin_individual_student_dashboard, name="admin_individual_student_dashboard"),
   path('admin_payment_status/', views.admin_payment_status, name="admin_payment_status"),
   path('admin_generate_invoice/<int:pk>/', views.admin_generate_invoice, name="admin_generate_invoice"),
   path('generate_invoice_pdf/<int:pk>/', views.generate_invoice_pdf, name="generate_invoice_pdf"),
   path('send_invoice/<int:pk>/', views.send_invoice, name="send_invoice"),
   path('student_invoice/', views.student_invoice, name="student_invoice"),
   path('admin_delete_invoice/<int:pk>/', views.admin_delete_invoice, name="admin_delete_invoice"),
   path('student_upload_receipt/<int:pk>/', views.student_upload_receipt, name="student_upload_receipt"),
   path('admin_send_receipt/<int:pk>/', views.admin_send_receipt, name="admin_send_receipt"),
   path('admin_view_invoice_modal/<int:pk>/', views.admin_view_invoice_modal, name="admin_view_invoice_modal"),
   path('invoice/<int:pk>/', views.invoice, name="invoice"),
   path('receipt/<int:pk>/', views.receipt, name="receipt"),
   path('admin_edit_invoice/<int:pk>/', views.admin_edit_invoice, name="admin_edit_invoice"),
   path('admin_add_invoice_item/<int:pk>/', views.admin_add_invoice_item, name="admin_add_invoice_item"),
   path('invoice_pdf/<int:pk>/', views.invoice_pdf, name="invoice_pdf"),
   path('receipt_pdf/<int:pk>/', views.receipt_pdf, name="receipt_pdf"),
   path('invoice_student_download/<int:pk>/', views.invoice_student_download, name="invoice_student_download"),
   path('admin_deleted_records/', views.admin_deleted_records, name="admin_deleted_records"),
   path('deleted_admin_records/', views.deleted_admin_records, name="deleted_admin_records"),
   path('deleted_student_records/', views.deleted_student_records, name="deleted_student_records"),
   path('deleted_viewadmindetails/<int:pk>/', views.deleted_view_admin_detail, name="deleted_view_admin_detail"),
]  