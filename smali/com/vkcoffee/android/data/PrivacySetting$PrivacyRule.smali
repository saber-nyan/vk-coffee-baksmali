.class public abstract Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
.super Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;
.source "PrivacySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/PrivacySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrivacyRule"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apiValue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract displayValue()Ljava/lang/String;
.end method

.method public abstract getEditTitle()Ljava/lang/String;
.end method
