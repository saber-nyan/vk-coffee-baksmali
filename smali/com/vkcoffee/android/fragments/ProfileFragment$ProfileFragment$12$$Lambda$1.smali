.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileFragment$12$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6700
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6701
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6704
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/DialogInterface;
    .param p2, "var2"    # I

    .prologue
    .line 6708
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$success$552(Landroid/content/DialogInterface;I)V

    .line 6709
    return-void
.end method
