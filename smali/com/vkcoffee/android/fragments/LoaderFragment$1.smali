.class Lcom/vkcoffee/android/fragments/LoaderFragment$1;
.super Ljava/lang/Object;
.source "LoaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/LoaderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/LoaderFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/LoaderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/LoaderFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment$1;->this$0:Lcom/vkcoffee/android/fragments/LoaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment$1;->this$0:Lcom/vkcoffee/android/fragments/LoaderFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->onErrorRetryClick()V

    .line 59
    return-void
.end method
