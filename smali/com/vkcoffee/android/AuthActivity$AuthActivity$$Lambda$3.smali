.class public Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$3;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthActivity$$Lambda$3"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/AuthActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AuthActivity;)V
    .locals 0
    .param p1, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    .line 354
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1
    .param p0, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;

    .prologue
    .line 357
    new-instance v0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$3;-><init>(Lcom/vkcoffee/android/AuthActivity;)V

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/AuthActivity;->lambda$onCreate$242(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
