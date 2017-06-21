.class public Lcom/vkcoffee/android/MenuListView$MenuListView$BirthdayViewHolder$$Lambda$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuListView$BirthdayViewHolder$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;)V
    .locals 0
    .param p1, "birthdayViewHolder"    # Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;

    .prologue
    .line 1906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1907
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$MenuListView$BirthdayViewHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;

    .line 1908
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;)Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;
    .locals 1
    .param p0, "birthdayViewHolder"    # Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;

    .prologue
    .line 1911
    new-instance v0, Lcom/vkcoffee/android/MenuListView$MenuListView$BirthdayViewHolder$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$MenuListView$BirthdayViewHolder$$Lambda$1;-><init>(Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;)V

    return-object v0
.end method


# virtual methods
.method public onPhotoClick(Lcom/vkcoffee/android/ui/PhotoStripView;I)V
    .locals 1
    .param p1, "photoStripView"    # Lcom/vkcoffee/android/ui/PhotoStripView;
    .param p2, "i"    # I

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuListView$BirthdayViewHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->lambda$new$620(Lcom/vkcoffee/android/ui/PhotoStripView;I)V

    .line 1916
    return-void
.end method
