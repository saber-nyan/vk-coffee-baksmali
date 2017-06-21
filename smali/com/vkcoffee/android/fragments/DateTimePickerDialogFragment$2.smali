.class Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$2;
.super Ljava/lang/Object;
.source "DateTimePickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$2;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$2;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->access$000(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$2;->this$0:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->access$000(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;->onDateSelected(Ljava/util/Calendar;)V

    .line 74
    :cond_0
    return-void
.end method
