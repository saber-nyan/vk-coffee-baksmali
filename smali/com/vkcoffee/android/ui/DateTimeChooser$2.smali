.class Lcom/vkcoffee/android/ui/DateTimeChooser$2;
.super Ljava/lang/Object;
.source "DateTimeChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/DateTimeChooser;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/DateTimeChooser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/DateTimeChooser;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 50
    .local v1, "now":Ljava/util/Calendar;
    new-instance v2, Lcom/vkcoffee/android/ui/DateTimeChooser$2$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/DateTimeChooser$2$1;-><init>(Lcom/vkcoffee/android/ui/DateTimeChooser$2;)V

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    .line 62
    invoke-static {v3}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$000(Lcom/vkcoffee/android/ui/DateTimeChooser;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$000(Lcom/vkcoffee/android/ui/DateTimeChooser;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$000(Lcom/vkcoffee/android/ui/DateTimeChooser;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 50
    invoke-static {v2, v3, v4, v5}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;III)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    move-result-object v0

    .line 65
    .local v0, "dlg":Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$200(Lcom/vkcoffee/android/ui/DateTimeChooser;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "datepicker"

    invoke-virtual {v0, v2, v3}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$200(Lcom/vkcoffee/android/ui/DateTimeChooser;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08013b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setDoneButtonText(Ljava/lang/String;)V

    .line 67
    return-void
.end method
