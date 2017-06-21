.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$35;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileFragment$$Lambda$35"
.end annotation


# instance fields
.field private final arg$1:[Z


# direct methods
.method private constructor <init>([Z)V
    .locals 0
    .param p1, "var1"    # [Z

    .prologue
    .line 6564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6565
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$35;->arg$1:[Z

    .line 6566
    return-void
.end method

.method public static lambdaFactory$([Z)Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .locals 1
    .param p0, "var0"    # [Z

    .prologue
    .line 6569
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$35;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$35;-><init>([Z)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "var1"    # Landroid/content/DialogInterface;
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .prologue
    .line 6573
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$35;->arg$1:[Z

    invoke-static {v0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$editFriendLists$578([ZLandroid/content/DialogInterface;IZ)V

    .line 6574
    return-void
.end method
