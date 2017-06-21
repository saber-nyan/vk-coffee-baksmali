.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$2;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileFragment$12$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6719
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6720
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6723
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/DialogInterface;

    .prologue
    .line 6727
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$success$553(Landroid/content/DialogInterface;)V

    .line 6728
    return-void
.end method
