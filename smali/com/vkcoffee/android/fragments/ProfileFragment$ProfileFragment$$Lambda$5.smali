.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$5;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileFragment$$Lambda$5"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6013
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6014
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6017
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$5;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 6021
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$onCreateView$546(Landroid/view/View;)V

    .line 6022
    return-void
.end method
