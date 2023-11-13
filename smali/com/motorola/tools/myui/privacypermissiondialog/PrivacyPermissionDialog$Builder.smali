.class public final Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;
.super Ljava/lang/Object;
.source "PrivacyPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public appName:Ljava/lang/CharSequence;

.field public final context:Landroid/content/Context;

.field public isOnlyPermission:Z

.field public negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public permissionDescMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->appName:Ljava/lang/CharSequence;

    .line 3
    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    iput-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->permissionDescMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->isOnlyPermission:Z

    .line 7
    iput-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method
