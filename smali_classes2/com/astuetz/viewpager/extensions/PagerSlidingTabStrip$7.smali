.class Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$7;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->onSizeChanged(IIII)V
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
    .line 526
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$7;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$7;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 529
    return-void
.end method
