.class public final synthetic Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->permissionDescMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
