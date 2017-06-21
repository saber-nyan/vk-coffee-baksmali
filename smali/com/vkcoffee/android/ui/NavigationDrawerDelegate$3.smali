.class Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$3;
.super Ljava/lang/Object;
.source "NavigationDrawerDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    iput-object p1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$3;->this$0:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$3;->this$0:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->access$1(Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$3;->this$0:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->access$1(Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/MenuListView;->setExpansion(F)V

    .line 166
    return-void
.end method
