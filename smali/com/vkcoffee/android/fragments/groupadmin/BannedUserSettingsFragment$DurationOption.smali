.class Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;
.super Ljava/lang/Object;
.source "BannedUserSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DurationOption"
.end annotation


# instance fields
.field subtitle:Ljava/lang/String;

.field time:I

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$DurationOption;->title:Ljava/lang/String;

    return-object v0
.end method
