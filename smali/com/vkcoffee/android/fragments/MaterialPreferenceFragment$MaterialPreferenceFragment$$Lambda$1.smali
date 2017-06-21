.class public Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$MaterialPreferenceFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "MaterialPreferenceFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/DividerItemDecoration$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialPreferenceFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;)V
    .locals 0
    .param p1, "materialPreferenceFragment"    # Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$MaterialPreferenceFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;

    .line 156
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;
    .locals 1
    .param p0, "materialPreferenceFragment"    # Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;

    .prologue
    .line 159
    new-instance v0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$MaterialPreferenceFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$MaterialPreferenceFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;)V

    return-object v0
.end method


# virtual methods
.method public needDrawDividerAfter(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$MaterialPreferenceFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->lambda$onCreateRecyclerView$404(I)Z

    move-result v0

    return v0
.end method
