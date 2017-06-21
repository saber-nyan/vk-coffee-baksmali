.class Lcom/vkcoffee/android/MenuListView$13$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/MenuListView$13;

.field private final synthetic val$rtext:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView$13;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$13$1;->this$1:Lcom/vkcoffee/android/MenuListView$13;

    iput-object p2, p0, Lcom/vkcoffee/android/MenuListView$13$1;->val$rtext:Ljava/lang/CharSequence;

    .line 1672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$13$1;->val$rtext:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$27(Ljava/lang/CharSequence;)V

    .line 1675
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$13$1;->this$1:Lcom/vkcoffee/android/MenuListView$13;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView$13;->access$0(Lcom/vkcoffee/android/MenuListView$13;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 1676
    return-void
.end method
