.class Lcom/vkcoffee/android/ui/SlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/SlidingDrawer;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/SlidingDrawer;Lcom/vkcoffee/android/ui/SlidingDrawer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/SlidingDrawer;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/SlidingDrawer$1;

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/SlidingDrawer$DrawerToggler;-><init>(Lcom/vkcoffee/android/ui/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/SlidingDrawer;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/SlidingDrawer;->access$200(Lcom/vkcoffee/android/ui/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    :goto_0
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/SlidingDrawer;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/SlidingDrawer;->access$300(Lcom/vkcoffee/android/ui/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/SlidingDrawer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/SlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/SlidingDrawer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/SlidingDrawer;->toggle()V

    goto :goto_0
.end method
