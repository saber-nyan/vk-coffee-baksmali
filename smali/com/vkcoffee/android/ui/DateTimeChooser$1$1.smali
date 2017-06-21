.class Lcom/vkcoffee/android/ui/DateTimeChooser$1$1;
.super Ljava/lang/Object;
.source "DateTimeChooser.java"

# interfaces
.implements Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/DateTimeChooser$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/DateTimeChooser$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/DateTimeChooser$1;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$1$1;->this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;II)V
    .locals 2
    .param p1, "view"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$1$1;->this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/DateTimeChooser$1;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$000(Lcom/vkcoffee/android/ui/DateTimeChooser;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$1$1;->this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/DateTimeChooser$1;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$000(Lcom/vkcoffee/android/ui/DateTimeChooser;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$1$1;->this$1:Lcom/vkcoffee/android/ui/DateTimeChooser$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/DateTimeChooser$1;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$100(Lcom/vkcoffee/android/ui/DateTimeChooser;)V

    .line 40
    return-void
.end method
