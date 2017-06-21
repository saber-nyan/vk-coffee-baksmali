.class Lcom/vkcoffee/android/ui/DateTimeChooser$1;
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
    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$1;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    new-instance v1, Lcom/vkcoffee/android/ui/DateTimeChooser$1$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/DateTimeChooser$1$1;-><init>(Lcom/vkcoffee/android/ui/DateTimeChooser$1;)V

    iget-object v2, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$1;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    .line 41
    invoke-static {v2}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$000(Lcom/vkcoffee/android/ui/DateTimeChooser;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$1;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$000(Lcom/vkcoffee/android/ui/DateTimeChooser;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    .line 33
    invoke-static {v1, v2, v3, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;IIZ)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    move-result-object v0

    .line 42
    .local v0, "dlg":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$1;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$200(Lcom/vkcoffee/android/ui/DateTimeChooser;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "timepicker"

    invoke-virtual {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser$1;->this$0:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/DateTimeChooser;->access$200(Lcom/vkcoffee/android/ui/DateTimeChooser;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08013b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setDoneButtonText(Ljava/lang/String;)V

    .line 44
    return-void
.end method
