.class public Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$2;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthActivity$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/AuthActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AuthActivity;)V
    .locals 0
    .param p1, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$2;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    .line 338
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;

    .prologue
    .line 341
    new-instance v0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$2;-><init>(Lcom/vkcoffee/android/AuthActivity;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$2;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/AuthActivity;->lambda$onCreate$241(Landroid/content/DialogInterface;)V

    .line 346
    return-void
.end method
