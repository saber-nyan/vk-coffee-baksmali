.class public Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$1;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthActivity$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/AuthActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AuthActivity;)V
    .locals 0
    .param p1, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    .line 321
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;

    .prologue
    .line 324
    new-instance v0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$1;-><init>(Lcom/vkcoffee/android/AuthActivity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/AuthActivity;->lambda$onCreate$240(Landroid/content/DialogInterface;I)V

    .line 329
    return-void
.end method
