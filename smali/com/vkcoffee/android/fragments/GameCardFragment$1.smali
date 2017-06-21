.class Lcom/vkcoffee/android/fragments/GameCardFragment$1;
.super Ljava/lang/Object;
.source "GameCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/GameCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GameCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$000(Lcom/vkcoffee/android/fragments/GameCardFragment;)Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->showAllRequest:Z

    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$000(Lcom/vkcoffee/android/fragments/GameCardFragment;)Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->access$100(Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;)V

    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$000(Lcom/vkcoffee/android/fragments/GameCardFragment;)Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->build()V

    .line 104
    return-void
.end method
