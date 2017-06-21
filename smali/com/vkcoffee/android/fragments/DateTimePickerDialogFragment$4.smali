.class Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;
.super Ljava/lang/Object;
.source "DateTimePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 98
    .local v1, "now":Ljava/util/Calendar;
    new-instance v2, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4$1;-><init>(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;)V

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    .line 110
    invoke-static {v3}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->access$100(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->access$100(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->access$100(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 98
    invoke-static {v2, v3, v4, v5}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;III)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    move-result-object v0

    .line 111
    .local v0, "dlg":Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setMinDay(III)V

    .line 112
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setMaxDay(III)V

    .line 113
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "datepicker"

    invoke-virtual {v0, v2, v3}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    const v3, 0x7f08013b

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setDoneButtonText(Ljava/lang/String;)V

    .line 115
    return-void
.end method
