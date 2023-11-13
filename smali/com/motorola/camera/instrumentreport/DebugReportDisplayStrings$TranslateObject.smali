.class public Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;
.super Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;
.source "DebugReportDisplayStrings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranslateObject"
.end annotation


# instance fields
.field public mTranslateCamera:Z

.field public mTranslateMode:Z

.field public final synthetic this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;

    .line 3
    invoke-direct {p0, p3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;-><init>(Ljava/lang/String;)V

    .line 4
    iput-boolean p4, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateCamera:Z

    .line 5
    iput-boolean p6, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateMode:Z

    return-void
.end method


# virtual methods
.method public getDisplayString(Ljava/lang/String;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;->mMappedTag:Ljava/lang/String;

    :try_start_0
    const-string p3, "coldstart"

    .line 2
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 3
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p3, " - "

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, p3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mColdStartStringMap:Ljava/util/HashMap;

    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v0, -0x1

    :try_start_1
    const-string v1, "mode"

    .line 9
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 10
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v1, v0

    .line 11
    :goto_1
    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateMode:Z

    if-eqz v2, :cond_3

    if-eq v1, v0, :cond_2

    .line 12
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, "Unknown"

    .line 15
    :goto_2
    invoke-static {p1, p3, v0}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :try_start_2
    const-string v0, "camera"

    .line 16
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 17
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    const-string p2, ""

    .line 18
    :goto_3
    iget-boolean p0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateCamera:Z

    if-eqz p0, :cond_4

    .line 19
    invoke-static {p1, p3, p2}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method
