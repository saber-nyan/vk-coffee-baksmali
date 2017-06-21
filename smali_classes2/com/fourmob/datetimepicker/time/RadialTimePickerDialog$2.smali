.class Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$2;
.super Ljava/lang/Object;
.source "RadialTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v0, v1, v2, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$100(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;IZZZ)V

    .line 246
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$200(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 247
    return-void
.end method
