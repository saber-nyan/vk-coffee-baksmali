.class Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter$1;
.super Landroid/database/DataSetObserver;
.source "InfinitePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter$1;->this$0:Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter$1;->this$0:Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->notifyDataSetChanged()V

    .line 18
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter$1;->this$0:Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method
