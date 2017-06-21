.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "NewPostFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewPostFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

.field private final arg$2:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "newPostFragment"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment;
    .param p2, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    .line 1663
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$$Lambda$1;->arg$2:Landroid/view/inputmethod/InputMethodManager;

    .line 1664
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment;Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "newPostFragment"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment;
    .param p1, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 1667
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment;Landroid/view/inputmethod/InputMethodManager;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$$Lambda$1;->arg$2:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->lambda$showKeyboard$472(Landroid/view/inputmethod/InputMethodManager;)V

    .line 1672
    return-void
.end method
