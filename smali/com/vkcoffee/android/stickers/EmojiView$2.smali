.class Lcom/vkcoffee/android/stickers/EmojiView$2;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/EmojiView;->createTabs()Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/EmojiView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/EmojiView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$2;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 98
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$2;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/EmojiView;->access$100(Lcom/vkcoffee/android/stickers/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->onPageChanged()V

    .line 103
    return-void
.end method
