.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$12;
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
    name = "ProfileFragment$$Lambda$12"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6139
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$12;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6140
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6143
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$12;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$12;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 6147
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$12;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$buildInfoItems$556(Landroid/view/View;)V

    .line 6148
    return-void
.end method
