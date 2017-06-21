.class public Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$5;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoardTopicViewFragment$$Lambda$5"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

.field private final arg$2:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "boardTopicViewFragment"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .line 1147
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$5;->arg$2:Landroid/widget/EditText;

    .line 1148
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "boardTopicViewFragment"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 1151
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$5;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$5;->arg$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->lambda$onPageSelected$324(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    .line 1156
    return-void
.end method
