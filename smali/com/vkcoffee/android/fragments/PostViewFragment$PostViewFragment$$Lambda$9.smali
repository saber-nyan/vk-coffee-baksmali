.class public Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$9;
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
    name = "PostViewFragment$$Lambda$9"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final arg$2:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 2142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2143
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 2144
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$9;->arg$2:Landroid/widget/EditText;

    .line 2145
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 2148
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$9;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$9;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$9;->arg$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$editRepostComment$521(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    .line 2153
    return-void
.end method
