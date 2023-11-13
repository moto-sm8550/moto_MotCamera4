.class public final Lcom/motorola/camera/settings/FastSettingsManager;
.super Ljava/lang/Object;
.source "FastSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/settings/FastSettingsManager$LazyLoader;
    }
.end annotation


# static fields
.field public static final MODE_MENU_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    const-class v1, Landroid/graphics/Point;

    const-string v2, "com.motorola.camera.surface_size"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/settings/SettingsManager$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "com.motorola.camera.mode.menu.show"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/settings/SettingsManager$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/settings/FastSettingsManager;->MODE_MENU_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SURFACE_SIZE:Landroid/graphics/Point;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/FastSettingsManager;->MODE_MENU_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/settings/FastSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    return-void
.end method

.method public static get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "TT;>;)",
            "Lcom/motorola/camera/settings/Setting<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/FastSettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/FastSettingsManager;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/FastSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    return-object p0
.end method

.method public static set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/motorola/camera/settings/Setting;->setValuePriv(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No setting found matching:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
