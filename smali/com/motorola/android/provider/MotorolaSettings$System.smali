.class public final Lcom/motorola/android/provider/MotorolaSettings$System;
.super Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;
.source "MotorolaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MotorolaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_PEAK_REFRESH_RATE:Ljava/lang/String; = "default_peak_refresh_rate"

.field public static final DESKTOP_DISPLAY_SIZE_SCALE:Ljava/lang/String; = "desktop_display_size_scale"

.field public static final DESKTOP_FONT_SIZE_SCALE:Ljava/lang/String; = "desktop_font_size_scale"

.field public static final DESKTOP_RESOLUTION_DP:Ljava/lang/String; = "desktop_resolution_dp"

.field public static final DESKTOP_RESOLUTION_REMOTE:Ljava/lang/String; = "desktop_resolution_remote"

.field public static final DESKTOP_RESOLUTION_WFD:Ljava/lang/String; = "desktop_resolution_wfd"

.field public static final FIXED_ON_PEAK_REFRESH_RATE:Ljava/lang/String; = "fixed_on_peak_refresh_rate"

.field public static final FLIP_OPEN_SOUND:Ljava/lang/String; = "flip_open_sound"

.field public static final GLOBAL_COLOR_TEMPERATURE:Ljava/lang/String; = "global_color_temperature"

.field public static final MIRROR_CAST_DISPLAY_SIZE_SCALE:Ljava/lang/String; = "mirror_cast_display_size_scale"

.field public static final MIRROR_CAST_FONT_SIZE_SCALE:Ljava/lang/String; = "mirror_cast_font_size_scale"

.field public static final OVERHEAT_MODE_REFRESH_RATE:Ljava/lang/String; = "overheat_mode_refresh_rate"

.field public static final POWER_SAVE_SEC_MIRACAST:Ljava/lang/String; = "power_save_sec_miracast"

.field public static final POWER_SAVE_SEC_RDP:Ljava/lang/String; = "power_save_sec_rdp"

.field public static final REMOTE_DESKTOP_DISPLAY_SIZE_SCALE:Ljava/lang/String; = "remote_desktop_display_size_scale"

.field public static final REMOTE_DESKTOP_FONT_SIZE_SCALE:Ljava/lang/String; = "remote_desktop_font_size_scale"

.field public static final REVERSE_MOUSE_PRIMARY_BUTTON:Ljava/lang/String; = "reverse_mouse_primary_button"

.field public static final SHOW_HOVERS:Ljava/lang/String; = "show_hovers"

.field public static final SYSTEM_PEAK_REFRESH_RATE:Ljava/lang/String; = "system_peak_refresh_rate"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
