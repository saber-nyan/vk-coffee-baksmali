.class Lcom/vkcoffee/android/fragments/BarcodeShareFragment$1;
.super Ljava/lang/Object;
.source "BarcodeShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$1;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$1;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$1;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->access$000(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$1;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->access$000(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method
