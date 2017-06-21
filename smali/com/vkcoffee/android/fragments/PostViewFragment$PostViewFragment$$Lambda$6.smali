.class public Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$6;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostViewFragment$$Lambda$6"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0
    .param p1, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;

    .prologue
    .line 2093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2094
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 2095
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;

    .prologue
    .line 2098
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$6;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$onOptionsItemSelected$518(Landroid/content/DialogInterface;I)V

    .line 2103
    return-void
.end method
