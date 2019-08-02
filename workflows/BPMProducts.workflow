{
	"contents": {
		"df8a9eb2-fac3-4dc4-b1d7-2b342ce41c5d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "bpmproducts",
			"subject": "BPMProducts",
			"name": "BPMProducts",
			"documentation": "Manage and approve products",
			"lastIds": "c3cc44be-2179-41a1-b376-e4a7a6fc522b",
			"events": {
				"2aa203d0-a9af-4289-b55f-181f724812c2": {
					"name": "StartEvent"
				},
				"06d63509-45e2-4bab-842f-5e835cdcc8df": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"3bd8a8f9-f491-4f08-8144-1d5e7df34516": {
					"name": "ReadProductData"
				},
				"c32db6f7-0228-482e-be60-9a3df7948dd6": {
					"name": "ShowPDataApproval"
				},
				"dbe6933f-491f-416e-8cb5-a8101bec164d": {
					"name": "ReadStatus"
				}
			},
			"sequenceFlows": {
				"166c3c25-b3bb-4dc3-9458-cec801e44148": {
					"name": "SequenceFlow1"
				},
				"29839a82-7d63-45d7-84af-6fe38cd365fa": {
					"name": "SequenceFlow2"
				},
				"39e3a04a-0ac8-4860-9567-db913ccaf61e": {
					"name": "SequenceFlow3"
				},
				"1a5a9d79-e44b-43ae-ad3f-062a3b7e58bd": {
					"name": "SequenceFlow6"
				}
			},
			"diagrams": {
				"3f2f55c9-d98c-48a9-9c4f-469e3c13a804": {}
			}
		},
		"2aa203d0-a9af-4289-b55f-181f724812c2": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent",
			"documentation": "When my workflow starts",
			"sampleContextRefs": {
				"9c1bd5a3-7cb4-480f-9d01-b7bec719acfd": {}
			}
		},
		"06d63509-45e2-4bab-842f-5e835cdcc8df": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"3bd8a8f9-f491-4f08-8144-1d5e7df34516": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Northwind",
			"path": "/V3/Northwind/Northwind.svc/Products(${context.pid})",
			"httpMethod": "GET",
			"responseVariable": "${context.productData}",
			"id": "servicetask1",
			"name": "ReadProductData",
			"documentation": "Read product data from northwind\n"
		},
		"c32db6f7-0228-482e-be60-9a3df7948dd6": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Please approve ${context.productData.ProductName}",
			"description": "Please approve ${context.productData.ProductName}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "I333733",
			"formReference": "/forms/BPMProducts/ProductForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "productform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "ShowPDataApproval",
			"documentation": "Show the data to user and ask for approval from context",
			"dueDateRef": "a0bcdd50-4200-4dfc-a54f-bfa1ab8bfca9"
		},
		"166c3c25-b3bb-4dc3-9458-cec801e44148": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "2aa203d0-a9af-4289-b55f-181f724812c2",
			"targetRef": "3bd8a8f9-f491-4f08-8144-1d5e7df34516"
		},
		"29839a82-7d63-45d7-84af-6fe38cd365fa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "3bd8a8f9-f491-4f08-8144-1d5e7df34516",
			"targetRef": "c32db6f7-0228-482e-be60-9a3df7948dd6"
		},
		"39e3a04a-0ac8-4860-9567-db913ccaf61e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "c32db6f7-0228-482e-be60-9a3df7948dd6",
			"targetRef": "dbe6933f-491f-416e-8cb5-a8101bec164d"
		},
		"3f2f55c9-d98c-48a9-9c4f-469e3c13a804": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"99dc95f9-737a-4010-8021-e563787b1fb7": {},
				"dbc24755-cbeb-4563-b1bc-e0b185bcf14e": {},
				"16f9fe54-657a-476b-a5cd-eb3a24d55db6": {},
				"13c41c89-c92f-418e-8dd8-5114aa1aec01": {},
				"1c12d98f-f1f8-4fd6-96b1-296dae731897": {},
				"33fb8995-a13f-4cf4-9e99-4b06ef565b8c": {},
				"9cff9bbb-f529-4d29-b186-a85c93f6ade0": {},
				"07a8eb24-332f-4ee9-a679-f3f5b5b9be71": {},
				"8b4fb8b8-69d4-4b86-a090-b859e21d70bd": {}
			}
		},
		"9c1bd5a3-7cb4-480f-9d01-b7bec719acfd": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/BPMProducts/initContext.json",
			"id": "default-start-context"
		},
		"99dc95f9-737a-4010-8021-e563787b1fb7": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 46,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "2aa203d0-a9af-4289-b55f-181f724812c2"
		},
		"dbc24755-cbeb-4563-b1bc-e0b185bcf14e": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 44.5,
			"y": 424,
			"width": 35,
			"height": 35,
			"object": "06d63509-45e2-4bab-842f-5e835cdcc8df"
		},
		"16f9fe54-657a-476b-a5cd-eb3a24d55db6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,44 62,94",
			"sourceSymbol": "99dc95f9-737a-4010-8021-e563787b1fb7",
			"targetSymbol": "13c41c89-c92f-418e-8dd8-5114aa1aec01",
			"object": "166c3c25-b3bb-4dc3-9458-cec801e44148"
		},
		"13c41c89-c92f-418e-8dd8-5114aa1aec01": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 12,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "3bd8a8f9-f491-4f08-8144-1d5e7df34516"
		},
		"1c12d98f-f1f8-4fd6-96b1-296dae731897": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,154 62,204",
			"sourceSymbol": "13c41c89-c92f-418e-8dd8-5114aa1aec01",
			"targetSymbol": "33fb8995-a13f-4cf4-9e99-4b06ef565b8c",
			"object": "29839a82-7d63-45d7-84af-6fe38cd365fa"
		},
		"33fb8995-a13f-4cf4-9e99-4b06ef565b8c": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 12,
			"y": 204,
			"width": 100,
			"height": 60,
			"object": "c32db6f7-0228-482e-be60-9a3df7948dd6"
		},
		"9cff9bbb-f529-4d29-b186-a85c93f6ade0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,234 62,344.25",
			"sourceSymbol": "33fb8995-a13f-4cf4-9e99-4b06ef565b8c",
			"targetSymbol": "07a8eb24-332f-4ee9-a679-f3f5b5b9be71",
			"object": "39e3a04a-0ac8-4860-9567-db913ccaf61e"
		},
		"c3cc44be-2179-41a1-b376-e4a7a6fc522b": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 6,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 2
		},
		"a0bcdd50-4200-4dfc-a54f-bfa1ab8bfca9": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT2M",
			"id": "timereventdefinition1"
		},
		"dbe6933f-491f-416e-8cb5-a8101bec164d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/BPMProducts/readStatus.js",
			"id": "scripttask2",
			"name": "ReadStatus"
		},
		"07a8eb24-332f-4ee9-a679-f3f5b5b9be71": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 12,
			"y": 314.25,
			"width": 100,
			"height": 60,
			"object": "dbe6933f-491f-416e-8cb5-a8101bec164d"
		},
		"1a5a9d79-e44b-43ae-ad3f-062a3b7e58bd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "dbe6933f-491f-416e-8cb5-a8101bec164d",
			"targetRef": "06d63509-45e2-4bab-842f-5e835cdcc8df"
		},
		"8b4fb8b8-69d4-4b86-a090-b859e21d70bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,344.25 62,441.5",
			"sourceSymbol": "07a8eb24-332f-4ee9-a679-f3f5b5b9be71",
			"targetSymbol": "dbc24755-cbeb-4563-b1bc-e0b185bcf14e",
			"object": "1a5a9d79-e44b-43ae-ad3f-062a3b7e58bd"
		}
	}
}