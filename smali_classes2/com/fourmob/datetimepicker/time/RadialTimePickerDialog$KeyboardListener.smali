.class Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$KeyboardListener;
.super Ljava/lang/Object;
.source "RadialTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;


# direct methods
.method private constructor <init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$KeyboardListener;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    .param p2, "x1"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$1;

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$KeyboardListener;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 955
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 956
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$KeyboardListener;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-static {v0, p2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->access$800(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;I)Z

    move-result v0

    .line 958
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
