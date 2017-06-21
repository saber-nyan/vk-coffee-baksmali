.class Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;
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
    .line 258
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$300(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$400(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$500(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;Z)V

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$600(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$600(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$200(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    .line 268
    invoke-static {v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$200(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$200(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    .line 267
    invoke-interface {v0, v1, v2, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;II)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->dismiss()V

    .line 271
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$200(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    goto :goto_0
.end method
