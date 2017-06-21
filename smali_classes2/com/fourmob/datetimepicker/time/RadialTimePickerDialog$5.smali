.class Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$5;
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
    .line 290
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$5;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$5;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$200(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 294
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$5;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$200(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v0

    .line 295
    .local v0, "amOrPm":I
    if-nez v0, :cond_1

    .line 296
    const/4 v0, 0x1

    .line 300
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$5;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v1, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$700(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;I)V

    .line 301
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$5;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$200(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 302
    return-void

    .line 297
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 298
    const/4 v0, 0x0

    goto :goto_0
.end method
