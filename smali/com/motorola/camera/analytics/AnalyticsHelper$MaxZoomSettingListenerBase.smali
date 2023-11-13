.class public abstract Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListenerBase;
.super Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;
.source "AnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/analytics/AnalyticsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MaxZoomSettingListenerBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void
.end method
