.class Lcom/vkcoffee/android/MenuListView$15;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$15;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$15;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$13(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->notifyDataSetChanged()V

    .line 1757
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$15;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$7(Lcom/vkcoffee/android/MenuListView;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 1759
    return-void
.end method
