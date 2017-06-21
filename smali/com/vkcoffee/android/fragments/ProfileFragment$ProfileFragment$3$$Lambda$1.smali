.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$3$$Lambda$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileFragment$3$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final arg$2:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;
    .param p2, "var2"    # Landroid/view/View;

    .prologue
    .line 6680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6681
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6682
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$3$$Lambda$1;->arg$2:Landroid/view/View;

    .line 6683
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 6686
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$3$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$3$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/MenuItem;

    .prologue
    .line 6690
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$3$$Lambda$1;->arg$2:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$onClick$541(Landroid/view/View;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
