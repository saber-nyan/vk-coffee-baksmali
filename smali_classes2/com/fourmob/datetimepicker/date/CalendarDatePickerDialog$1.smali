.class Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;
.super Ljava/lang/Object;
.source "CalendarDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;->this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;->this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->tryVibrate()V

    .line 254
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;->this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    invoke-static {v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->access$000(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;->this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    invoke-static {v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->access$000(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;->this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;->this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    invoke-static {v2}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->access$100(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;->this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    invoke-static {v3}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->access$100(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;->this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    invoke-static {v4}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->access$100(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;III)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;->this$0:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->dismiss()V

    .line 257
    return-void
.end method
