.class public Lcom/foxconn/customization/CustomizationConfig;
.super Ljava/lang/Object;
.source "CustomizationConfig.java"


# static fields
.field public static final DIRECTORY:Ljava/lang/String; = "/system/etc/"

.field public static final TAG:Ljava/lang/String;

.field public static final XML_FILENAME:Ljava/lang/String; = "customization_config.xml"

.field private static sInstance:Lcom/foxconn/customization/CustomizationConfig;


# instance fields
.field private mBooleanValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDoubleValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mIntValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLongValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStringValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/foxconn/customization/CustomizationConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/foxconn/customization/CustomizationConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/foxconn/customization/CustomizationConfig;->mBooleanValues:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/foxconn/customization/CustomizationConfig;->mStringValues:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/foxconn/customization/CustomizationConfig;->mIntValues:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/foxconn/customization/CustomizationConfig;->mLongValues:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/foxconn/customization/CustomizationConfig;->mDoubleValues:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/foxconn/customization/CustomizationConfig;->mFloatValues:Ljava/util/HashMap;

    return-void
.end method

.method private cacheEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "target":Ljava/util/HashMap;
    const/4 v2, 0x0

    .line 94
    .local v2, "typedValue":Ljava/lang/Object;
    :try_start_0
    const-string v3, "boolean"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mBooleanValues:Ljava/util/HashMap;

    .line 96
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 114
    .end local v2    # "typedValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    :goto_1
    return-void

    .line 97
    .restart local v2    # "typedValue":Ljava/lang/Object;
    :cond_2
    const-string v3, "string"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mStringValues:Ljava/util/HashMap;

    .line 99
    move-object v2, p3

    .local v2, "typedValue":Ljava/lang/String;
    goto :goto_0

    .line 100
    .local v2, "typedValue":Ljava/lang/Object;
    :cond_3
    const-string v3, "integer"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mIntValues:Ljava/util/HashMap;

    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "typedValue":Ljava/lang/Integer;
    goto :goto_0

    .line 103
    .local v2, "typedValue":Ljava/lang/Object;
    :cond_4
    const-string v3, "long"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 104
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mLongValues:Ljava/util/HashMap;

    .line 105
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, "typedValue":Ljava/lang/Long;
    goto :goto_0

    .line 106
    .local v2, "typedValue":Ljava/lang/Object;
    :cond_5
    const-string v3, "double"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 107
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mDoubleValues:Ljava/util/HashMap;

    .line 108
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .local v2, "typedValue":Ljava/lang/Double;
    goto :goto_0

    .line 109
    .local v2, "typedValue":Ljava/lang/Object;
    :cond_6
    const-string v3, "float"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mFloatValues:Ljava/util/HashMap;

    .line 111
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "typedValue":Ljava/lang/Float;
    goto :goto_0

    .line 117
    .end local v2    # "typedValue":Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "re":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/foxconn/customization/CustomizationConfig;->TAG:Ljava/lang/String;

    const-string v4, "exception occurs while parsing config value"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getInstance()Lcom/foxconn/customization/CustomizationConfig;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/foxconn/customization/CustomizationConfig;->sInstance:Lcom/foxconn/customization/CustomizationConfig;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/foxconn/customization/CustomizationConfig;

    invoke-direct {v0}, Lcom/foxconn/customization/CustomizationConfig;-><init>()V

    sput-object v0, Lcom/foxconn/customization/CustomizationConfig;->sInstance:Lcom/foxconn/customization/CustomizationConfig;

    .line 35
    sget-object v0, Lcom/foxconn/customization/CustomizationConfig;->sInstance:Lcom/foxconn/customization/CustomizationConfig;

    invoke-direct {v0}, Lcom/foxconn/customization/CustomizationConfig;->loadConfig()V

    .line 37
    :cond_0
    sget-object v0, Lcom/foxconn/customization/CustomizationConfig;->sInstance:Lcom/foxconn/customization/CustomizationConfig;

    return-object v0
.end method

.method private loadConfig()V
    .locals 10

    .prologue
    .line 45
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v8, "/system/etc/customization_config.xml"

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 49
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 51
    const/4 v8, 0x0

    invoke-interface {v6, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    const/4 v7, 0x1

    .line 54
    .local v7, "skip":Z
    const/4 v0, 0x0

    .line 55
    .local v0, "configName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 56
    .local v1, "configType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 58
    .local v2, "configValue":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 59
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 60
    .local v4, "eventType":I
    packed-switch v4, :pswitch_data_0

    .line 75
    :pswitch_0
    const/4 v7, 0x1

    goto :goto_0

    .line 62
    :pswitch_1
    const-string v8, "config"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 63
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v8, 0x0

    const-string v9, "type"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const/4 v7, 0x0

    goto :goto_0

    .line 69
    :pswitch_2
    if-nez v7, :cond_0

    .line 70
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-direct {p0, v0, v1, v2}, Lcom/foxconn/customization/CustomizationConfig;->cacheEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    .end local v0    # "configName":Ljava/lang/String;
    .end local v1    # "configType":Ljava/lang/String;
    .end local v2    # "configValue":Ljava/lang/String;
    .end local v4    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "skip":Z
    :catchall_0
    move-exception v8

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/foxconn/customization/CustomizationConfig;->TAG:Ljava/lang/String;

    const-string v9, "exception occurs while loading config"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 79
    .restart local v0    # "configName":Ljava/lang/String;
    .restart local v1    # "configType":Ljava/lang/String;
    .restart local v2    # "configValue":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "skip":Z
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 123
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mBooleanValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 124
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "defValue":Z
    :cond_0
    return p2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # D

    .prologue
    .line 143
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mDoubleValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 144
    .local v0, "value":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .end local p2    # "defValue":D
    :cond_0
    return-wide p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 148
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mFloatValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 149
    .local v0, "value":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2    # "defValue":F
    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mIntValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 134
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 138
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mLongValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 139
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/foxconn/customization/CustomizationConfig;->mStringValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
