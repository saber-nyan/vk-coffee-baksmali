.class public Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;
.super Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;
.source "SettingsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;"
    }
.end annotation


# instance fields
.field public fragment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p1, "iconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, "_fragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;-><init>(ILjava/lang/Object;)V

    .line 89
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;->fragment:Ljava/lang/Class;

    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "iconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/Object;
    .param p3, "_onClick"    # Ljava/lang/Runnable;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;-><init>(ILjava/lang/Object;)V

    .line 94
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;->onClick:Ljava/lang/Runnable;

    .line 95
    return-void
.end method
