.class Lcom/vkcoffee/android/ui/ProfileGiftsView$1;
.super Ljava/lang/Object;
.source "ProfileGiftsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/ProfileGiftsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/ProfileGiftsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/ProfileGiftsView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;->this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;->this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->performClick()Z

    .line 40
    return-void
.end method
