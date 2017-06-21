.class Lcom/vkcoffee/android/ui/CustomSlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "CustomSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/CustomSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/CustomSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/CustomSlidingDrawer;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/vkcoffee/android/ui/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/CustomSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/CustomSlidingDrawer;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/CustomSlidingDrawer;->access$100(Lcom/vkcoffee/android/ui/CustomSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/CustomSlidingDrawer;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/CustomSlidingDrawer;->access$200(Lcom/vkcoffee/android/ui/CustomSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/CustomSlidingDrawer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/CustomSlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/vkcoffee/android/ui/CustomSlidingDrawer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/CustomSlidingDrawer;->toggle()V

    goto :goto_0
.end method
