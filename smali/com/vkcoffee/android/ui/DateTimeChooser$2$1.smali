.class Lcom/vkcoffee/android/ui/DateTimeChooser$2$1;
.super Ljava/lang/Object;
.source "DateTimeChooser.java"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/DateTimeChooser$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/DateTimeChooser$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/DateTimeChooser$2;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2$1;->this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;III)V
    .locals 8
    .param p1, "view"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 54
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 55
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2$1;->this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$2;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/DateTimeChooser$2;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$200(Lcom/vkcoffee/android/ui/DateTimeChooser;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080272

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2$1;->this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$2;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/DateTimeChooser$2;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$000(Lcom/vkcoffee/android/ui/DateTimeChooser;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 60
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$2$1;->this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$2;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/DateTimeChooser$2;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$100(Lcom/vkcoffee/android/ui/DateTimeChooser;)V

    goto :goto_0
.end method
