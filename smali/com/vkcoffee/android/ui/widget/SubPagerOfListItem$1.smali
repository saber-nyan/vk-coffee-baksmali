.class Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SubPagerOfListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$1;->this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$1;->this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$1;->this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->access$000(Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;)Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->setAdapter(Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;)V

    .line 264
    return-void
.end method
