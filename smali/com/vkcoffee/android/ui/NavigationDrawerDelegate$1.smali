.class Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$1;
.super Ljava/lang/Object;
.source "NavigationDrawerDelegate.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->setContentView(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$1;->this$0:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$1;->this$0:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->access$0(Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)V

    .line 130
    return-void
.end method
