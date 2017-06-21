.class public Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$1;
.super Ljava/lang/Object;
.source "RepostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/RepostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepostActivity$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/RepostActivity;

.field private final arg$2:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/RepostActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;
    .param p2, "arrayList"    # Ljava/util/ArrayList;

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    .line 335
    iput-object p2, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$1;->arg$2:Ljava/util/ArrayList;

    .line 336
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;Ljava/util/ArrayList;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;
    .param p1, "arrayList"    # Ljava/util/ArrayList;

    .prologue
    .line 339
    new-instance v0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$1;-><init>(Lcom/vkcoffee/android/RepostActivity;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$1;->arg$2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/RepostActivity;->lambda$onCreate$660(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    .line 344
    return-void
.end method
