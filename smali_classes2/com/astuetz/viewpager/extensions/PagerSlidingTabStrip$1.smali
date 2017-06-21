.class Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V
    .locals 0
    .param p1, "this$0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$100(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$200(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$002(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)I

    .line 301
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$000(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$300(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;II)V

    .line 303
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
