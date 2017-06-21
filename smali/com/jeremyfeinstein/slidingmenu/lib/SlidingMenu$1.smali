.class Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final POSITION_CLOSE:I = 0x1

.field public static final POSITION_OPEN:I = 0x0

.field public static final POSITION_SECONDARY_OPEN:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 244
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 247
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;->onOpen()V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$0(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$0(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;->onClose()V

    goto :goto_0

    .line 251
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$1(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$1(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;->onOpen()V

    goto :goto_0
.end method
