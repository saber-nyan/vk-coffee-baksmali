.class Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3;
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
    .line 78
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    new-instance v1, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3$1;-><init>(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3;)V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    .line 89
    invoke-static {v2}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->access$100(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->access$100(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    .line 81
    invoke-static {v1, v2, v3, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;IIZ)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    move-result-object v0

    .line 90
    .local v0, "dlg":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "timepicker"

    invoke-virtual {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    const v2, 0x7f08013b

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setDoneButtonText(Ljava/lang/String;)V

    .line 92
    return-void
.end method
