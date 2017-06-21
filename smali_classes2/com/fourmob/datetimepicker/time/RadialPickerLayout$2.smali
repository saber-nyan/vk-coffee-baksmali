.class Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

.field final synthetic val$isInnerCircle:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;->val$isInnerCircle:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 633
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v5}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->access$202(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;Z)Z

    .line 634
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-static {v2}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->access$300(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;->val$isInnerCircle:[Ljava/lang/Boolean;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->access$400(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;IZZZ)I

    move-result v0

    .line 636
    .local v0, "value":I
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->access$502(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;I)I

    .line 637
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->access$600(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    invoke-interface {v1, v2, v0, v4}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 638
    return-void
.end method
