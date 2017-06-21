.class Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1$1;
.super Ljava/lang/Object;
.source "FilePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$100(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$200(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$100(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$300(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Ljava/io/File;)Z

    goto :goto_0
.end method
